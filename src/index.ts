import express from "express"
import { PrismaClient } from "@prisma/client";

const app = express();
const prismaClient = new PrismaClient();


app.post('/', async (req, res) => {
    const data = await prismaClient.user.create({
        data : {
            username : "User" + Math.random(),
            password : "pass" + Math.floor(Math.random() * 10000)
        }
    })
    res.json({
        message : "Hello World",
        data
    })
})

app.get('/', async (req, res) => {
    const data = await prismaClient.user.findMany();
    res.json({
        message : "Hello world",
        data
    })
})

app.listen(8076, () => {
    console.log("App is live on port 8076");
})

