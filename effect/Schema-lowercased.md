# lowercased

Verifies that a string is lowercased.

To import and use `lowercased` from the "Schema" module:

```ts
import * as Schema from "@effect/schema/Schema"
// Can be accessed like this
Schema.lowercased
```

**Signature**

```ts
export declare const lowercased: <A extends string>(
  options?: FilterAnnotations<A> | undefined
) => <I>(self: Schema<I, A>) => Schema<I, A>
```
