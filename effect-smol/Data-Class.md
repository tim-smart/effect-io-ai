Package: `effect`<br />
Module: `Data`<br />

## Data.Class

Base class for immutable data types.

Extend `Class` with a type parameter to declare fields. The constructor
accepts those fields as a single object argument. When there are no fields
the argument is optional.

- Use when you need a lightweight immutable value type with `.pipe()` support.
- Instances are `Readonly` and `Pipeable`.
- If you also need a `_tag` discriminator, use `TaggedClass` instead.
- If you need a yieldable error, use `Error` or `TaggedError`.

**Example** (defining a value class)

```ts
import { Data, Equal } from "effect"

class Person extends Data.Class<{ readonly name: string }> {}

const mike1 = new Person({ name: "Mike" })
const mike2 = new Person({ name: "Mike" })

console.log(Equal.equals(mike1, mike2))
// true
```

**See**

- `TaggedClass` — adds a `_tag` field
- `Error` — yieldable error variant

**Signature**

```ts
declare const Class: new <A extends Record<string, any> = {}>(args: Types.VoidIfEmpty<{ readonly [P in keyof A]: A[P]; }>) => Readonly<A> & Pipeable.Pipeable
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Data.ts#L113)

Since v2.0.0