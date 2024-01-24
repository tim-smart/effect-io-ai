# split

Returns a achema that allows splitting a string into an array of strings.

To import and use `split` from the "Schema" module:

```ts
import * as Schema from "@effect/schema/Schema"
// Can be accessed like this
Schema.split
```

**Signature**

```ts
export declare const split: (separator: string) => Schema<never, string, ReadonlyArray<string>>
```
