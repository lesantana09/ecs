import React from 'react'
import Link from 'next/link'

function Home() {
  return (
    <>
      <Link href="/about" legacyBehavior>
        About
      </Link>
      <h1>Home</h1>
      <img src="app4/static/home.png" />
    </>
  )
}

export default Home