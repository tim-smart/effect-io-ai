# catchTags

Recovers from the specified tagged errors.

To import and use `catchTags` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.catchTags
```

**Signature**

```ts
export declare const catchTags: {
  <
    E,
    Cases extends E extends { _tag: string }
      ? { [K in E['_tag']]+?: ((error: Extract<E, { _tag: K }>) => Effect<any, any, any>) | undefined }
      : {}
  >(
    cases: Cases
  ): <R, A>(
    self: Effect<R, E, A>
  ) => Effect<
    | R
    | {
        [K in keyof Cases]: Cases[K] extends (...args: Array<any>) => Effect<infer R, any, any> ? R : never
      }[keyof Cases],
    | Exclude<E, { _tag: keyof Cases }>
    | {
        [K in keyof Cases]: Cases[K] extends (...args: Array<any>) => Effect<any, infer E, any> ? E : never
      }[keyof Cases],
    | A
    | {
        [K in keyof Cases]: Cases[K] extends (...args: Array<any>) => Effect<any, any, infer A> ? A : never
      }[keyof Cases]
  >
  <
    R,
    E,
    A,
    Cases extends E extends { _tag: string }
      ? { [K in E['_tag']]+?: ((error: Extract<E, { _tag: K }>) => Effect<any, any, any>) | undefined }
      : {}
  >(
    self: Effect<R, E, A>,
    cases: Cases
  ): Effect<
    | R
    | {
        [K in keyof Cases]: Cases[K] extends (...args: Array<any>) => Effect<infer R, any, any> ? R : never
      }[keyof Cases],
    | Exclude<E, { _tag: keyof Cases }>
    | {
        [K in keyof Cases]: Cases[K] extends (...args: Array<any>) => Effect<any, infer E, any> ? E : never
      }[keyof Cases],
    | A
    | {
        [K in keyof Cases]: Cases[K] extends (...args: Array<any>) => Effect<any, any, infer A> ? A : never
      }[keyof Cases]
  >
}
```
