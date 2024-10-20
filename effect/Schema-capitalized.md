# capitalized

Verifies that a string is capitalized.

To import and use `capitalized` from the "Schema" module:

```ts
import * as Schema from "@effect/schema/Schema"
// Can be accessed like this
Schema.capitalized
```

**Signature**

```ts
export declare const capitalized: <A extends string>(
  annotations?: Annotations.Filter<A>
) => <I, R>(self: Schema<A, I, R>) => filter<Schema<A, I, R>>
```
