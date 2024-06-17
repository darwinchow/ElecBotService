/*
 Navicat Premium Data Transfer

 Source Server         : ebsdemo
 Source Server Type    : SQLite
 Source Server Version : 3035005 (3.35.5)
 Source Schema         : main

 Target Server Type    : SQLite
 Target Server Version : 3035005 (3.35.5)
 File Encoding         : 65001

 Date: 18/11/2022 21:11:49
*/

PRAGMA foreign_keys = false;

-- ----------------------------
-- Table structure for dorm
-- ----------------------------
DROP TABLE IF EXISTS "dorm";
CREATE TABLE "dorm" (
  "dorm_id" text NOT NULL,
  "campus" TEXT,
  "building" TEXT,
  "room" TEXT,
  PRIMARY KEY ("dorm_id")
);

-- ----------------------------
-- Table structure for elec_data
-- ----------------------------
DROP TABLE IF EXISTS "elec_data";
CREATE TABLE "elec_data" (
  "dorm_id" text NOT NULL,
  "balance" integer,
  "bill" integer,
  "elec_start" integer,
  "elec_end" integer,
  "elec_use" integer,
  "elec_free" integer,
  "price" integer,
  "update_at" TEXT NOT NULL,
  PRIMARY KEY ("dorm_id", "update_at")
);

-- ----------------------------
-- Table structure for notify
-- ----------------------------
DROP TABLE IF EXISTS "notify";
CREATE TABLE "notify" (
  "id" text NOT NULL,
  "uid" TEXT,
  "dorm_id" TEXT,
  "threshold" integer,
  "method" TEXT,
  "last_time" TEXT,
  PRIMARY KEY ("id")
);

-- ----------------------------
-- Table structure for payment_record
-- ----------------------------
DROP TABLE IF EXISTS "payment_record";
CREATE TABLE "payment_record" (
  "dorm_id" text NOT NULL,
  "elect_end" integer,
  "stored_value" integer,
  "payment_method" TEXT,
  "payment_time" TEXT NOT NULL,
  PRIMARY KEY ("payment_time", "dorm_id")
);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS "user";
CREATE TABLE "user" (
  "uid" text NOT NULL,
  "qq" TEXT NOT NULL,
  "phone" TEXT,
  "reg_time" TEXT NOT NULL,
  "bind_dorm" TEXT,
  PRIMARY KEY ("uid")
);

PRAGMA foreign_keys = true;
