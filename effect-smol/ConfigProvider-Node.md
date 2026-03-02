Package: `effect`<br />
Module: `ConfigProvider`<br />

## ConfigProvider.Node

A discriminated union describing the shape of a configuration value at a
given path.

- `Value` – a terminal string leaf.
- `Record` – an object-like container whose immediate child keys are known.
  May carry an optional co-located `value`.
- `Array` – an indexed container with a known `length`. May carry an
  optional co-located `value`.

When to use:
- Implement a custom `ConfigProvider` by returning `Node` values from the
  `get` callback passed to `make`.
- Inspect raw provider output before schema parsing.

**See**

- `makeValue` – construct a `Value` node
- `makeRecord` – construct a `Record` node
- `makeArray` – construct an `Array` node

**Signature**

```ts
type Node = | {
    readonly _tag: "Value"
    readonly value: string
  }
  /** An object; keys are unordered */
  | {
    readonly _tag: "Record"
    readonly keys: ReadonlySet<string>
    readonly value: string | undefined
  }
  /** An array-like container; length is the number of elements */
  | {
    readonly _tag: "Array"
    readonly length: number
    readonly value: string | undefined
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ConfigProvider.ts#L118)

Since v4.0.0