-- CreateEnum
CREATE TYPE "userStatus" AS ENUM ('ACTIVE', 'INNACTIVE', 'BANNED');

-- CreateEnum
CREATE TYPE "userRole" AS ENUM ('CASHIER', 'ADMIN');

-- CreateTable
CREATE TABLE "User" (
    "id" TEXT NOT NULL,
    "firstName" TEXT NOT NULL,
    "lastName" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "password" TEXT NOT NULL,
    "status" "userStatus" NOT NULL DEFAULT 'ACTIVE',
    "privilages" TEXT[] DEFAULT ARRAY[]::TEXT[],
    "role" "userRole" NOT NULL DEFAULT 'CASHIER',

    CONSTRAINT "User_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "User_email_key" ON "User"("email");
