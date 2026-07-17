Package: `effect`<br />
Module: `Record`<br />

## Record.get

Retrieves a value at a particular key from a record safely, returning it wrapped in an `Option`.

**Example** (Getting a value as an Option)

```ts
import { Option, Record as R } from "effect"
import * as assert from "node:assert"

const person: Record<string, unknown> = { name: "John Doe", age: 35 }

assert.deepStrictEqual(R.get(person, "name"), Option.some("John Doe"))
assert.deepStrictEqual(R.get(person, "email"), Option.none())
```

**Signature**

```ts
declare const get: { <K extends string | symbol>(key: NoInfer<K>): <A>(self: ReadonlyRecord<K, A>) => Option.Option<A>; <K extends string | symbol, A>(self: ReadonlyRecord<K, A>, key: NoInfer<K>): Option.Option<A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Record.ts#L435)

Since v2.0.0