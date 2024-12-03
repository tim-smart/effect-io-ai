# uncapitalized

Verifies that a string is uncapitalized.

To import and use `uncapitalized` from the "Schema" module:

```ts
import * as Schema from "effect/Schema"
// Can be accessed like this
Schema.uncapitalized
```

**Signature**

```ts
export declare const uncapitalized: <A extends string>(
  annotations?: Annotations.Filter<A>
) => <I, R>(self: Schema<A, I, R>) => filter<Schema<A, I, R>>
```
