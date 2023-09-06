# lowercased

Verifies that a string is lowercased

Note. This combinator does not make any transformations, it only validates.
If what you were looking for was a combinator to lowercase strings, then check out the `lowercase` combinator.

To import and use `lowercased` from the "Schema" module:

```ts
import * as Schema from '@effect/schema/Schema'

// Can be accessed like this
Schema.lowercased
```

**Signature**

```ts
export declare const lowercased: <A extends string>(
  options?: FilterAnnotations<A> | undefined
) => <I>(self: Schema<I, A>) => Schema<I, A>
```
