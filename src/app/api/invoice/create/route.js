import { PrismaClient } from "@prisma/client";
import { NextResponse } from "next/server";


export function GET(req, res){
    try {
        const prisma = new PrismaClient()
    } catch (error) {
        return NextResponse.json({status: "fail", data: error})
    }
}