/*
  Warnings:

  - You are about to drop the column `sellersId` on the `Order` table. All the data in the column will be lost.
  - Added the required column `seller` to the `Order` table without a default value. This is not possible if the table is not empty.

*/
-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_Order" (
    "orderId" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "product" TEXT NOT NULL,
    "country" TEXT NOT NULL,
    "price" INTEGER NOT NULL,
    "seller" INTEGER NOT NULL
);
INSERT INTO "new_Order" ("country", "orderId", "price", "product") SELECT "country", "orderId", "price", "product" FROM "Order";
DROP TABLE "Order";
ALTER TABLE "new_Order" RENAME TO "Order";
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;
