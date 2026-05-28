Package: `effect`<br />
Module: `Record`<br />

## Record.isSubrecordBy

Checks whether all the keys and values in one record are also found in another record.
Uses the provided equivalence function to compare values.

**Example** (Checking subrecords with a custom equivalence)

```ts
import { Equivalence, Record } from "effect"

const isSubrecord = Record.isSubrecordBy(
  Equivalence.make<string>((self, that) => self.toLowerCase() === that.toLowerCase())
)

const required: Record.ReadonlyRecord<string, string> = { role: "Admin" }
const available: Record.ReadonlyRecord<string, string> = {
  role: "admin",
  status: "active"
}

console.log(
  isSubrecord(required, available)
) // true
console.log(
  isSubrecord({ role: "Admin", status: "inactive" }, available)
) // false
console.log(
  isSubrecord(required, { role: "editor", status: "active" })
) // false
```

**Signature**

```ts
declare const isSubrecordBy: <A>(equivalence: Equivalence<A>) => { <K extends string>(that: ReadonlyRecord<K, A>): (self: ReadonlyRecord<K, A>) => boolean; <K extends string>(self: ReadonlyRecord<K, A>, that: ReadonlyRecord<K, A>): boolean; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Record.ts#L1159)

Since v2.0.0