# catchTags

Recovers from the specified tagged errors.

To import and use `catchTags` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.catchTags
```

**Signature**

```ts
export declare const catchTags: {
  <
    E,
    Cases extends {
      [K in Extract<E, { _tag: string }>["_tag"]]+?:
        | ((error: Extract<E, { _tag: K }>) => Effect<any, any, any>)
        | undefined
    } & (unknown extends E ? {} : { [K in Exclude<keyof Cases, Extract<E, { _tag: string }>["_tag"]>]: never })
  >(
    cases: Cases
  ): <A, R>(
    self: Effect<A, E, R>
  ) => Effect<
    | A
    | {
        [K in keyof Cases]: Cases[K] extends (...args: Array<any>) => Effect<infer A, any, any> ? A : never
      }[keyof Cases],
    | Exclude<E, { _tag: keyof Cases }>
    | {
        [K in keyof Cases]: Cases[K] extends (...args: Array<any>) => Effect<any, infer E, any> ? E : never
      }[keyof Cases],
    | R
    | {
        [K in keyof Cases]: Cases[K] extends (...args: Array<any>) => Effect<any, any, infer R> ? R : never
      }[keyof Cases]
  >
  <
    R,
    E,
    A,
    Cases extends {
      [K in Extract<E, { _tag: string }>["_tag"]]+?:
        | ((error: Extract<E, { _tag: K }>) => Effect<any, any, any>)
        | undefined
    } & (unknown extends E ? {} : { [K in Exclude<keyof Cases, Extract<E, { _tag: string }>["_tag"]>]: never })
  >(
    self: Effect<A, E, R>,
    cases: Cases
  ): Effect<
    | A
    | {
        [K in keyof Cases]: Cases[K] extends (...args: Array<any>) => Effect<infer A, any, any> ? A : never
      }[keyof Cases],
    | Exclude<E, { _tag: keyof Cases }>
    | {
        [K in keyof Cases]: Cases[K] extends (...args: Array<any>) => Effect<any, infer E, any> ? E : never
      }[keyof Cases],
    | R
    | {
        [K in keyof Cases]: Cases[K] extends (...args: Array<any>) => Effect<any, any, infer R> ? R : never
      }[keyof Cases]
  >
}
```
