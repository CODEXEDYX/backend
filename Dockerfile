# syntax=docker/dockerfile:1

FROM node:20.10.0-alpine

WORKDIR /app

COPY package*.json yarn.lock ./

RUN yarn install --production && yarn clean cache

COPY . ./