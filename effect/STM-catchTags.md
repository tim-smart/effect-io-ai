# catchTags

Recovers from multiple tagged errors.

To import and use `catchTags` from the "STM" module:

```ts
import * as STM from "effect/STM"
// Can be accessed like this
STM.catchTags
```

**Signature**

```ts
export declare const catchTags: {
  <
    E extends { _tag: string },
    Cases extends { [K in E["_tag"]]+?: ((error: Extract<E, { _tag: K }>) => STM<any, any, any>) | undefined }
  >(
    cases: Cases
  ): <R, A>(
    self: STM<R, E, A>
  ) => STM<
    | R
    | { [K in keyof Cases]: Cases[K] extends (...args: Array<any>) => STM<infer R, any, any> ? R : never }[keyof Cases],
    | Exclude<E, { _tag: keyof Cases }>
    | { [K in keyof Cases]: Cases[K] extends (...args: Array<any>) => STM<any, infer E, any> ? E : never }[keyof Cases],
    | A
    | { [K in keyof Cases]: Cases[K] extends (...args: Array<any>) => STM<any, any, infer A> ? A : never }[keyof Cases]
  >
  <
    R,
    E extends { _tag: string },
    A,
    Cases extends { [K in E["_tag"]]+?: ((error: Extract<E, { _tag: K }>) => STM<any, any, any>) | undefined }
  >(
    self: STM<R, E, A>,
    cases: Cases
  ): STM<
    | R
    | { [K in keyof Cases]: Cases[K] extends (...args: Array<any>) => STM<infer R, any, any> ? R : never }[keyof Cases],
    | Exclude<E, { _tag: keyof Cases }>
    | { [K in keyof Cases]: Cases[K] extends (...args: Array<any>) => STM<any, infer E, any> ? E : never }[keyof Cases],
    | A
    | { [K in keyof Cases]: Cases[K] extends (...args: Array<any>) => STM<any, any, infer A> ? A : never }[keyof Cases]
  >
}
```
