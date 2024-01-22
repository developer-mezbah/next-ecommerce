import { PrismaClient } from "@prisma/client";
import { headers } from "next/headers";
import { NextResponse } from "next/server";


export async function POST(req, res){
    try {
        const prisma = new PrismaClient()
        const headerList = headers();
        const id = parseInt(headerList.get('id'))
        // const id = 4
        const reqBody = await req.json()
        
        const result = await prisma.customer_profiles.upsert({
            where: {user_id: id},
            update: reqBody,
            create: {...reqBody, user_id: id}
        })
        return NextResponse.json({status: "success", data: result})
    } catch (error) {
        return NextResponse.json({status: "fail", data: error})
    }
}


export async function GET(req, res){
    try {
        const headerList = headers();
        const id = parseInt(headerList.get('id'))
        const prisma = new PrismaClient();
        const result = await prisma.customer_profiles.findUnique({
            where: {user_id: id}
        })
        
        return NextResponse.json({status: "success", result})
    } catch (error) {
        return NextResponse.json({status: "fail", data: error.toString()})
    }
}