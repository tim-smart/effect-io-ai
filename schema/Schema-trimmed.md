# trimmed

Verifies that a string contains no leading or trailing whitespaces.

Note. This combinator does not make any transformations, it only validates.
If what you were looking for was a combinator to trim strings, then check out the `trim` combinator.

Part of the `Schema` module, imported from `@effect/schema/Schema`.

**Signature**

```ts
export declare const trimmed: <A extends string>(
  options?: AnnotationOptions<A> | undefined
) => <I>(self: Schema<I, A>) => Schema<I, A>
```
