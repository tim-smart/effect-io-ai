# catchTags

Switches over to the stream produced by one of the provided functions, in
case this one fails with an error matching one of the given `_tag`'s.

To import and use `catchTags` from the "Stream" module:

```ts
import * as Stream from 'effect/Stream'

// Can be accessed like this
Stream.catchTags
```

**Signature**

```ts
export declare const catchTags: {
  <
    E extends { _tag: string },
    Cases extends { [K in E['_tag']]+?: ((error: Extract<E, { _tag: K }>) => Stream<any, any, any>) | undefined }
  >(
    cases: Cases
  ): <R, A>(
    self: Stream<R, E, A>
  ) => Stream<
    | R
    | {
        [K in keyof Cases]: Cases[K] extends (...args: Array<any>) => Stream.Variance<infer R, infer _E, infer _A>
          ? R
          : never
      }[keyof Cases],
    | Exclude<E, { _tag: keyof Cases }>
    | {
        [K in keyof Cases]: Cases[K] extends (...args: Array<any>) => Stream.Variance<infer _R, infer E, infer _A>
          ? E
          : never
      }[keyof Cases],
    | A
    | {
        [K in keyof Cases]: Cases[K] extends (...args: Array<any>) => Stream.Variance<infer _R, infer _E, infer A>
          ? A
          : never
      }[keyof Cases]
  >
  <
    R,
    E extends { _tag: string },
    A,
    Cases extends { [K in E['_tag']]+?: ((error: Extract<E, { _tag: K }>) => Stream<any, any, any>) | undefined }
  >(
    self: Stream<R, E, A>,
    cases: Cases
  ): Stream<
    | R
    | {
        [K in keyof Cases]: Cases[K] extends (...args: Array<any>) => Stream.Variance<infer R, infer _E, infer _A>
          ? R
          : never
      }[keyof Cases],
    | Exclude<E, { _tag: keyof Cases }>
    | {
        [K in keyof Cases]: Cases[K] extends (...args: Array<any>) => Stream.Variance<infer _R, infer E, infer _A>
          ? E
          : never
      }[keyof Cases],
    | A
    | {
        [K in keyof Cases]: Cases[K] extends (...args: Array<any>) => Stream.Variance<infer _R, infer _E, infer A>
          ? A
          : never
      }[keyof Cases]
  >
}
```
