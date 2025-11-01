#!/bin/sh

# Run migrations and start server
echo "Running database migrations..."
npx medusa db:migrate

echo "Building Medusa for production..."
npm run build

echo "Seeding database (only if needed)..."
npm run seed || echo "Seeding failed, continuing..."

echo "Starting Medusa production server..."
npm run start