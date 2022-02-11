const hre = require("hardhat");
const ethers = hre.ethers


async function main () {
  console.log('Сheck this work with: https://remix.ethereum.org/')
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });