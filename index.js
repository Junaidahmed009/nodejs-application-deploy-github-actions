import express from "express";

const app=express()
const PORT = process.env.PORT ?? 8080

app.get('/', (req,res)=>{
    return res.json({msg: 'Hello from the server  ooh paa ji bari dair lagi ja actions chlaunde chlaunde'})
})

app.listen(PORT,()=>{
    console.log(`Server is up and running on port ${PORT}`)
})