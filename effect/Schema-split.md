# split

Returns a schema that allows splitting a string into an array of strings.

To import and use `split` from the "Schema" module:

```ts
import * as Schema from "@effect/schema/Schema"
// Can be accessed like this
Schema.split
```

**Signature**

```ts
export declare const split: (separator: string) => Schema<ReadonlyArray<string>, string>
```
