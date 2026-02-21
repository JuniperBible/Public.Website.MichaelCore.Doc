---
title: "Getting Started"
weight: 1
---

# Getting Started

This guide will help you get started with the Michael Bible Module.

## Installation

### Prerequisites

- Go 1.26 or higher
- Basic understanding of Go modules

### Install the Module

```bash
go get github.com/JuniperBible/michael
```

## Quick Start

### Basic Usage

```go
package main

import (
    "fmt"
    "github.com/JuniperBible/michael"
)

func main() {
    // Initialize the Bible module
    bible := michael.New()

    // Look up a verse
    verse, err := bible.GetVerse("John", 3, 16)
    if err != nil {
        panic(err)
    }

    fmt.Println(verse.Text)
}
```

## Next Steps

- Explore the [API Documentation](/api)
- Learn about [Translations](/translations)
- Check out [Examples](/examples)
