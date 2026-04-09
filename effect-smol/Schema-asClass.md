Package: `effect`<br />
Module: `Schema`<br />

## Schema.asClass

Transforms a schema into a class that can be extended with `extends`. The
resulting class inherits the full schema API (e.g. `annotate`) and can define
static methods that reference `this`.

**Example** (Wrapping a primitive schema)

```ts
import { Schema } from "effect"

class MyString extends Schema.asClass(Schema.String) {
  static readonly decodeUnknownSync = Schema.decodeUnknownSync(this)
}

console.log(MyString.decodeUnknownSync("a"))
// "a"
```

**Signature**

```ts
declare const asClass: <S extends Top>(schema: S) => S & { new (_: never): {}; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L1450)

Since v4.0.0