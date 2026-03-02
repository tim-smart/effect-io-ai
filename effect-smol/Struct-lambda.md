Package: `effect`<br />
Module: `Struct`<br />

## Struct.lambda

Wraps a plain function as a `Lambda` value so it can be used with
`map`, `mapPick`, and `mapOmit`.

- The type parameter `L` encodes both the input and output types at the type
  level, allowing the compiler to track how struct value types change.
- At runtime, the returned value is the same function — `lambda` only
  adjusts the type.

**Example** (Wrapping values in arrays)

```ts
import { pipe, Struct } from "effect"

interface AsArray extends Struct.Lambda {
  <A>(self: A): Array<A>
  readonly "~lambda.out": Array<this["~lambda.in"]>
}

const asArray = Struct.lambda<AsArray>((a) => [a])
const result = pipe({ x: 1, y: "hello" }, Struct.map(asArray))
console.log(result) // { x: [1], y: ["hello"] }
```

**See**

- `Lambda` – the type-level interface
- `map` – apply a lambda to all struct values

**Signature**

```ts
declare const lambda: <L extends (a: any) => any>(f: (a: Parameters<L>[0]) => ReturnType<L>) => L
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Struct.ts#L655)

Since v4.0.0