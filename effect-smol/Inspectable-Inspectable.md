Package: `effect`<br />
Module: `Inspectable`<br />

## Inspectable.Inspectable

Interface for objects that can be inspected and provide custom string representations.

Objects implementing this interface can control how they appear in debugging contexts,
JSON serialization, and Node.js inspection. This is particularly useful for creating
custom data types that display meaningful information during development.

**Example**

```ts
import { Inspectable } from "effect"
import { format } from "effect/Formatter"

class Result implements Inspectable.Inspectable {
  constructor(
    private readonly tag: "Success" | "Failure",
    private readonly value: unknown
  ) {}

  toString(): string {
    return format(this.toJSON())
  }

  toJSON() {
    return { _tag: this.tag, value: this.value }
  }

  [Inspectable.NodeInspectSymbol]() {
    return this.toJSON()
  }
}

const success = new Result("Success", 42)
console.log(success.toString()) // Pretty formatted JSON
```

**Signature**

```ts
export interface Inspectable {
  toString(): string
  toJSON(): unknown
  [NodeInspectSymbol](): unknown
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Inspectable.ts#L137)

Since v2.0.0