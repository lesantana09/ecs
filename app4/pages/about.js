import React from 'react'
import Link from 'next/link'

function About() {
  return (
    <>
      <Link href="/" legacyBehavior>
        Home
      </Link>
      <h1>About</h1>
      <img src="app4/static/about.png" />
    </>
  )
}

export default About