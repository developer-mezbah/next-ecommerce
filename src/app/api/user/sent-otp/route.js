import { SendEmail } from "@/utils/EmailUtility";
import { PrismaClient } from "@prisma/client";
import { NextResponse } from "next/server";

export async function GET(req, res) {
  try {
    const prisma = new PrismaClient();
    const { searchParams } = new URL(req.url);
    const email = searchParams.get("email");

    const code = Math.floor(100000 + Math.random() * 900000).toString();
    const EmailText = `Your OTP Code is ${code}`;
    const EmailSubject = "Next Ecommerce Verification Code";
    await SendEmail(email, EmailText, EmailSubject);

    const result = await prisma.users.upsert({
      where: { email },
      update: { otp: code },
      create: { email: email, otp: code },
    });

    // if (result) {
    //   setTimeout(async () => {
    //     await prisma.users.update({
    //       where: { email },
    //       data: { otp: "0" },
    //     });
    //   }, 60000); // 1 min
    // }

    return NextResponse.json({ status: "success", data: result });
  } catch (error) {
    return NextResponse.json({ status: "fail", data: error });
  }
}
