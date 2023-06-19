# mapAttempt

Returns a config whose structure is the same as this one, but which may
produce a different value, constructed using the specified function, which
may throw exceptions that will be translated into validation errors.

Part of the `Config` module, imported from `@effect/io/Config`.

**Signature**

```ts
export declare const mapAttempt: {
  <A, B>(f: (a: A) => B): (self: Config<A>) => Config<B>
  <A, B>(self: Config<A>, f: (a: A) => B): Config<B>
}
```
