# Use Bun Alpine image
FROM oven/bun:1-alpine

# Create app directory
WORKDIR /usr/src/app

# Copy dependency files
COPY package.json bun.lockb* ./

# Install dependencies
RUN bun install --frozen-lockfile

# Copy app source
COPY . .

# Expose port
EXPOSE 3000

# Start app
CMD ["bun", "run", "start"]