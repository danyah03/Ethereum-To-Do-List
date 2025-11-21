# 📝 Ethereum ToDo List dApp — README

A fully working **ToDo List decentralized application (dApp)** built using:

* **Solidity (Smart Contract)**
* **Truffle / Ganache for local blockchain**
* **MetaMask for wallet connection**
* **Ethers.js for frontend interaction**
* **HTML/CSS/JS frontend**

This README covers everything:
✔ Installation steps
✔ Compile & deploy the contract
✔ Frontend setup
✔ File structure
✔ What to upload to GitHub
✔ Troubleshooting

---

# 🚀 1. Prerequisites

Make sure the following tools are installed.

### **1. Node.js & NPM**

Download from Node.js official site.

```bash
node -v
npm -v
```

### **2. Truffle Framework**

```bash
npm install -g truffle
```

### **3. Ganache (local blockchain)**

Download from Truffle Suite.

### **4. MetaMask Extension**

Install on your browser.

---

# 📁 2. Project Structure

```
TodoList-DApp/
│
├── contracts/
│   ├── Migrations.sol
│   └── TodoList.sol
│
├── migrations/
│   ├── 1_initial_migration.js
│   └── 2_deploy_todo.js
│
├── src/
│   ├── index.html
│   ├── style.css
│   ├── app.js
│
├── build/contracts/      (generated automatically)
│
├── truffle-config.js
├── package.json
└── README.md
```

---

# 🧱 3. Smart Contracts

## **Migrations.sol**

Used by Truffle for deployments.

## **TodoList.sol**

A simple contract:

* Stores last added task
* Tracks task count
* Emits event `TaskAdded`

Functions:

* `addTask(string)`
* `getLastTask()`
* `getTaskCount()`

⚠ Note: This contract only stores **the latest task**, not an array.

---

# ⚙ 4. Truffle Setup

Initialize project:

```bash
truffle init
```

### **Modify truffle-config.js**

```javascript
module.exports = {
  networks: {
    development: {
      host: "127.0.0.1",
      port: 7545,
      network_id: "*"
    }
  },
  compilers: {
    solc: {
      version: "0.8.20"
    }
  }
};
```

---

# 🔨 5. Compile Contracts

```bash
truffle compile
```

Expected: ✔ "Compiled successfully"

---

# 🚢 6. Deploy to Ganache

Start Ganache → then:

```bash
truffle migrate --reset --network development
```

Copy the deployed contract address into your `app.js`:

```js
const contractAddress = "YOUR_DEPLOYED_ADDRESS";
```

---

# 🌐 7. Frontend Setup

Files are inside `src/`.

### **index.html**

Loads UI + Ethers.js + app.js.

### **app.js**

Handles:

* Connecting MetaMask
* Initializing Ethers.js provider
* Calling contract functions
* Rendering tasks

### **style.css**

Optional styling.

Run frontend using a local server:

```bash
npx http-server ./src
```

Visit:

```
http://localhost:8080
```

---

# ❗ 8. Troubleshooting

### **MetaMask Not Connecting**

* Make sure Ganache RPC = 7545
* Network ID matches
* Refresh page

### **Contract Undefined in Frontend**

Ensure you uploaded:

```
build/contracts/TodoList.json
```

### **Transaction Reverts**

Check:

* Ganache balance
* MetaMask connected to correct network

---

# 🎉 9. Final Notes

Your ToDoList dApp is now ready:

* Works on local Ganache blockchain
* Uses Ethers.js for UI interaction
* Smart contract tested and functional
* Fully deployable + GitHub-ready

