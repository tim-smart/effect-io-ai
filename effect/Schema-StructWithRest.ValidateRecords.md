Package: `effect`<br />
Module: `Schema`<br />

## Schema.StructWithRest.ValidateRecords

Checks whether fixed fields are compatible with the rest record schemas.

**Details**

Returns `true` when all fixed fields can also satisfy the matching rest
index signatures. Returns a diagnostic object when TypeScript would make
the resulting intersection too narrow for one or more fixed keys.

**Example** (Checking record compatibility)

```ts
import { Schema } from "effect"

const user = Schema.Struct({ id: Schema.String })
const stringExtras = [Schema.Record(Schema.String, Schema.String)] as const

type UserCheck = Schema.StructWithRest.ValidateRecords<typeof user, typeof stringExtras>

const userCheck: UserCheck = true
void userCheck

const counter = Schema.Struct({ count: Schema.NumberFromString })

type CounterCheck = Schema.StructWithRest.ValidateRecords<typeof counter, typeof stringExtras>
//    ^? { "incompatible index signatures": "count" }

const counterCheck = null as unknown as CounterCheck
void counterCheck
```

**Signature**

```ts
type ValidateRecords<S, Records> = [IncompatibleRecords<S, Records>] extends [never] ? true
    : {
      "incompatible index signatures": IncompatibleRecords<S, Records>
    }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L4010)

Since v4.0.0