FROM node:lts-alpine AS builder
WORKDIR /nimbus
COPY package.json pnpm-lock.yaml ./
RUN npm install -g pnpm
RUN pnpm install --frozen-lockfile
COPY . .
RUN pnpm build
RUN pnpm prune --prod

FROM node:lts-alpine
WORKDIR /nimbus
COPY --from=builder /nimbus/build build/
COPY --from=builder /nimbus/node_modules node_modules/
COPY package.json .
ENV NODE_ENV=production
EXPOSE 3000
CMD ["node", "build"]
