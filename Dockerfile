FROM oven/bun:slim

# filesystem layer: 1
WORKDIR /app

# filesystem layer: 2
COPY package.json bun.lock ./

# filesystem layer: 3
RUN bun install

# copy source code
COPY . ./

# metadata layer 1
EXPOSE 3000

# metadata layer 2 - run the command upon setup
CMD [ "bun", "run", "dev", "--host" ]
