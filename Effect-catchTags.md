# catchTags

Recovers from the specified tagged errors.

Part of the `Effect` module from the `@effect/io` package.

### Signature

```typescript
export declare const catchTags: {
  <
    E extends { _tag: string },
    Cases extends { [K in E['_tag']]+?: ((error: Extract<E, { _tag: K }>) => Effect<any, any, any>) | undefined }
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
    E extends { _tag: string },
    A,
    Cases extends { [K in E['_tag']]+?: ((error: Extract<E, { _tag: K }>) => Effect<any, any, any>) | undefined }
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
