import { buildModule } from "@nomicfoundation/hardhat-ignition/modules";

const PunkyModule = buildModule("PunkyModule", (m) => {
  const punkyNFT = m.contract("PunkyNFT");
  return { punkyNFT };
});

export default PunkyModule;
