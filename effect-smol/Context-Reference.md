Package: `effect`<br />
Module: `Context`<br />

## Context.Reference

Service key with a lazily computed default value.

**Details**

When a `Reference` is requested from a `Context` that does not contain an
override, Context getters that resolve references return the cached default
value instead of failing.

**Example** (Defining a reference with a default value)

```ts
import { Context } from "effect"

// Define a reference with a default value
const LoggerRef: Context.Reference<{ log: (msg: string) => void }> =
  Context.Reference("Logger", {
    defaultValue: () => ({ log: (msg: string) => console.log(msg) })
  })

// The reference can be used without explicit provision
const context = Context.empty()
const logger = Context.get(context, LoggerRef) // Uses default value
```

**Signature**

```ts
export interface Reference<in out Shape> extends Service<never, Shape> {
  readonly [ReferenceTypeId]: typeof ReferenceTypeId
  readonly defaultValue: () => Shape
  [Symbol.iterator](): EffectIterator<Reference<Shape>>
  new(_: never): {}
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Context.ts#L329)

Since v3.11.0