# ValidDate

A schema representing valid dates, e.g. `new Date("fail")` is excluded, even though it is an instance of `Date`.

To import and use `ValidDate` from the "Schema" module:

```ts
import * as Schema from "@effect/schema/Schema"
// Can be accessed like this
Schema.ValidDate
```

**Signature**

```ts
export declare const ValidDate: Schema<string, Date>
```
