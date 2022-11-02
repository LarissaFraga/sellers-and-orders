import express from "express"
import { PrismaClient } from '@prisma/client'

const app = express()
app.use(express.json())

const prisma = new PrismaClient()

app.get('/sellers', async (req, res) => {
  const sellers = await prisma.seller.findMany()
  
  return res.json({ sellers })
})

app.get('/orders', async (req, res) => {
  const orders = await prisma.order.findMany()
  
  return res.json({ orders })
})

app.listen(3333)