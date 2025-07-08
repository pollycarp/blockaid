const { expect } = require("chai");
const { ethers } = require("hardhat");

describe("AidDistributor", () => {
  let contract, owner, donor, recipient;

  beforeEach(async () => {
    [owner, donor, recipient] = await ethers.getSigners();
    const AidDistributor = await ethers.getContractFactory("AidDistributor");
    contract = await AidDistributor.deploy();
    await contract.deployed();
  });

  it("registers a recipient", async () => {
    await expect(contract.registerRecipient(recipient.address, 254))
      .to.emit(contract, "RecipientRegistered");
    expect(await contract.isRegistered(recipient.address)).to.equal(true);
  });

  it("accepts donations and disburses aid", async () => {
    // donate 1 ether from donor
    await contract.connect(donor).donate({ value: ethers.utils.parseEther("1") });

    // balance before disbursement
    const startBal = await ethers.provider.getBalance(recipient.address);

    // send 0.3 ether aid
    await contract.distributeAid(recipient.address, ethers.utils.parseEther("0.3"));

    const endBal = await ethers.provider.getBalance(recipient.address);
    expect(endBal.sub(startBal)).to.equal(ethers.utils.parseEther("0.3"));
  });
});
