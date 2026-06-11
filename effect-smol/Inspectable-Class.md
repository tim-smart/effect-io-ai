Package: `effect`<br />
Module: `Inspectable`<br />

## Inspectable.Class

Provides an abstract base class that implements the Inspectable interface.

**When to use**

Use as a base class for inspectable objects that define their own JSON representation.

**Details**

This class provides a convenient way to create inspectable objects by extending it.
Subclasses only need to implement the `toJSON()` method, and they automatically
get proper `toString()` and Node.js inspection support.

**Example** (Extending the inspectable base class)

```ts
import { Inspectable } from "effect"

class User extends Inspectable.Class {
  constructor(
    public readonly id: number,
    public readonly name: string,
    public readonly email: string
  ) {
    super()
  }

  toJSON() {
    return {
      _tag: "User",
      id: this.id,
      name: this.name,
      email: this.email
    }
  }
}

const user = new User(1, "Alice", "alice@example.com")
console.log(user.toString()) // Pretty printed JSON with _tag, id, name, email
console.log(user) // In Node.js, shows the same formatted output
```

**Signature**

```ts
declare class Class
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Inspectable.ts#L289)

Since v2.0.0