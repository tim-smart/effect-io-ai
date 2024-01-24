# uppercased

Verifies that a string is uppercased.

To import and use `uppercased` from the "Schema" module:

```ts
import * as Schema from "@effect/schema/Schema"
// Can be accessed like this
Schema.uppercased
```

**Signature**

```ts
export declare const uppercased: <A extends string>(
  options?: FilterAnnotations<A> | undefined
) => <R, I>(self: Schema<R, I, A>) => Schema<R, I, A>
```
