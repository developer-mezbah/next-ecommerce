import { NextRequest, NextResponse } from "next/server"
import { VerifyToken } from "./utils/JWTHelper"

export async function middleware(req, res){
    try {
        const token = req.cookies.get('token')
        const payload = await VerifyToken(token['value'])

        const requestHeader = new Headers(req.Headers)
        requestHeader.set('email', payload['email'])
        requestHeader.set('id', payload['id'])

        return NextResponse.next({
            request:{
                headers: requestHeader
            }
        })
    } catch (error) {
        if(req.url.startsWith('/api/')){
            return NextResponse.json({status: "fail", data: "Unauthorized"},{status: 401} )
        }else{
            res.redirect('/login')
        }
    }
}

export const config={
    matcher: [
        '/api/cart/:path*',
        '/api/invoice/:path*',
        '/api/user/profile',
        '/api/wish/:path*'
    ]
}

