Package: `effect`<br />
Module: `ConfigProvider`<br />

## ConfigProvider.Node

A discriminated union describing the shape of a configuration value at a
given path.

**When to use**

Use when implementing a custom `ConfigProvider` by returning raw
nodes from the `get` callback passed to `make`, or when inspecting raw
provider output before schema parsing.

**Details**

`Value` is a terminal string leaf. `Record` is an object-like container
whose immediate child keys are known and may carry an optional co-located
`value`. `Array` is an indexed container with a known `length` and may also
carry an optional co-located `value`.

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

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/ConfigProvider.ts#L51)

Since v4.0.0