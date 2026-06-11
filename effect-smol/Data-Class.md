Package: `effect`<br />
Module: `Data`<br />

## Data.Class

Provides a base class for immutable data types.

**When to use**

Use when you need a lightweight immutable value type with `.pipe()` support.

**Details**

Extend `Class` with a type parameter to declare fields. The constructor
accepts those fields as a single object argument. When there are no fields
the argument is optional. Instances are `Readonly` and `Pipeable`.

**Example** (Defining a value class)

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Data.ts#L51)

Since v2.0.0