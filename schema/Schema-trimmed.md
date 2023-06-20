# trimmed

Verifies that a string contains no leading or trailing whitespaces.

Note. This combinator does not make any transformations, it only validates.
If what you were looking for was a combinator to trim strings, then check out the `trim` combinator.

To import and use `trimmed` from the "Schema" module:

```ts
import * as Schema from '@effect/schema/Schema'

// Can be accessed like this
Schema.trimmed
```

**Signature**

```ts
export declare const trimmed: <A extends string>(
  options?: AnnotationOptions<A> | undefined
) => <I>(self: Schema<I, A>) => Schema<I, A>
```
