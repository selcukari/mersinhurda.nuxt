# 1. Aşama: Bağımlılıkları Yükleme ve Build Almak
FROM node:22 AS builder

WORKDIR /app

COPY package.json yarn.lock ./

RUN corepack enable
RUN corepack prepare yarn@1.22.22 --activate

RUN yarn install

COPY . .

RUN yarn run build

FROM node:22-slim

WORKDIR /app

ENV NODE_ENV=production
ENV HOST=0.0.0.0
ENV PORT=3000

COPY --from=builder /app/.output ./.output

EXPOSE 3000

CMD ["node", ".output/server/index.mjs"]

# calısması
# docker build -t mersinhurda-nuxt-app .
# docker run -p 3000:3000 mersinhurda-nuxt-app