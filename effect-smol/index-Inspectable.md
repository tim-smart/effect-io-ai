Package: `effect`<br />
Module: `index`<br />

## index.Inspectable

Re-exports all named exports from the "./Inspectable.ts" module as `Inspectable`.

**Example**

```ts
import { Inspectable } from "effect"
import { format } from "effect/Formatter"

class User extends Inspectable.Class {
  constructor(
    public readonly name: string,
    public readonly email: string
  ) {
    super()
  }

  toJSON() {
    return {
      _tag: "User",
      name: this.name,
      email: this.email
    }
  }
}

const user = new User("Alice", "alice@example.com")
console.log(user.toString()) // Pretty printed JSON
console.log(format(user)) // Same as toString()
```

**Signature**

```ts
export * as Inspectable from "./Inspectable.ts"
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/index.ts#L1564)

Since v2.0.0