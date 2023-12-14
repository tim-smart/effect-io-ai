# secret

A combinator that transforms a `string` into a `Secret`.

To import and use `secret` from the "Schema" module:

```ts
import * as Schema from "@effect/schema/Schema"
// Can be accessed like this
Schema.secret
```

**Signature**

```ts
export declare const secret: <I, A extends string>(self: Schema<I, A>) => Schema<I, Secret.Secret>
```
