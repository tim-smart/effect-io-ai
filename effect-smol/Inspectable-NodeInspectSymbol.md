Package: `effect`<br />
Module: `Inspectable`<br />

## Inspectable.NodeInspectSymbol

The type of the Node.js inspection symbol used for custom object inspection.
This symbol type is used to implement custom inspection behavior in Node.js
environments.

**Example**

```ts
import { Inspectable } from "effect"

class CustomObject {
  constructor(private value: string) {}

  [Inspectable.NodeInspectSymbol]() {
    return `CustomObject(${this.value})`
  }
}

const obj = new CustomObject("test")
console.log(obj) // CustomObject(test)
```

**Signature**

```ts
type NodeInspectSymbol = typeof NodeInspectSymbol
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Inspectable.ts#L96)

Since v2.0.0