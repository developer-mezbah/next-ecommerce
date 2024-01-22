/*
  Warnings:

  - You are about to drop the column `upadatedAt` on the `brands` table. All the data in the column will be lost.
  - You are about to drop the column `upadatedAt` on the `categories` table. All the data in the column will be lost.
  - You are about to drop the column `upadatedAt` on the `customer_profiles` table. All the data in the column will be lost.
  - You are about to drop the column `upadatedAt` on the `invoice_products` table. All the data in the column will be lost.
  - You are about to drop the column `upadatedAt` on the `invoices` table. All the data in the column will be lost.
  - You are about to drop the column `upadatedAt` on the `product_carts` table. All the data in the column will be lost.
  - You are about to drop the column `upadatedAt` on the `product_details` table. All the data in the column will be lost.
  - You are about to drop the column `upadatedAt` on the `product_reviews` table. All the data in the column will be lost.
  - You are about to drop the column `upadatedAt` on the `product_sliders` table. All the data in the column will be lost.
  - You are about to drop the column `upadatedAt` on the `product_wishes` table. All the data in the column will be lost.
  - You are about to drop the column `upadatedAt` on the `products` table. All the data in the column will be lost.
  - You are about to drop the column `upadatedAt` on the `users` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE `brands` DROP COLUMN `upadatedAt`,
    ADD COLUMN `updatedAt` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0);

-- AlterTable
ALTER TABLE `categories` DROP COLUMN `upadatedAt`,
    ADD COLUMN `updatedAt` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0);

-- AlterTable
ALTER TABLE `customer_profiles` DROP COLUMN `upadatedAt`,
    ADD COLUMN `updatedAt` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0);

-- AlterTable
ALTER TABLE `invoice_products` DROP COLUMN `upadatedAt`,
    ADD COLUMN `updatedAt` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0);

-- AlterTable
ALTER TABLE `invoices` DROP COLUMN `upadatedAt`,
    ADD COLUMN `updatedAt` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0);

-- AlterTable
ALTER TABLE `product_carts` DROP COLUMN `upadatedAt`,
    ADD COLUMN `updatedAt` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0);

-- AlterTable
ALTER TABLE `product_details` DROP COLUMN `upadatedAt`,
    ADD COLUMN `updatedAt` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0);

-- AlterTable
ALTER TABLE `product_reviews` DROP COLUMN `upadatedAt`,
    ADD COLUMN `updatedAt` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0);

-- AlterTable
ALTER TABLE `product_sliders` DROP COLUMN `upadatedAt`,
    ADD COLUMN `updatedAt` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0);

-- AlterTable
ALTER TABLE `product_wishes` DROP COLUMN `upadatedAt`,
    ADD COLUMN `updatedAt` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0);

-- AlterTable
ALTER TABLE `products` DROP COLUMN `upadatedAt`,
    ADD COLUMN `updatedAt` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0);

-- AlterTable
ALTER TABLE `users` DROP COLUMN `upadatedAt`,
    ADD COLUMN `updatedAt` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0);
