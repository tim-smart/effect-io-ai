# trimmed

Verifies that a string contains no leading or trailing whitespaces.

Note. This combinator does not make any transformations, it only validates.
If what you were looking for was a combinator to trim strings, then check out the `trim` combinator.

To import and use `trimmed` from the "Schema" module:

```ts
import * as Schema from "effect/Schema"
// Can be accessed like this
Schema.trimmed
```

**Signature**

```ts
export declare const trimmed: <S extends Schema.Any>(
  annotations?: Annotations.Filter<Schema.Type<S>>
) => <A extends string>(self: S & Schema<A, Schema.Encoded<S>, Schema.Context<S>>) => filter<S>
```
