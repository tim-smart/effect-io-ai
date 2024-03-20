# Simplify

Required to fix a bug in TypeScript@5.0, dtslint fails with:
TypeScript@5.0 expected type to be:
{ readonly [x: string]: number; }
got:
{ [x: string]: number; }

To import and use `Simplify` from the "Schema" module:

```ts
import * as Schema from "@effect/schema/Schema"
// Can be accessed like this
Schema.Simplify
```
