# all

Constructs a config from a tuple / struct / arguments of configs.

Part of the `Config` module, imported from `@effect/io/Config`.

**Signature**

```ts
export declare const all: {
  <A, T extends readonly Config<any>[]>(self: Config<A>, ...args: T): Config<
    [A, ...(T['length'] extends 0 ? [] : { [K in keyof T]: [T[K]] extends [Config<infer A>] ? A : never })]
  >
  <T extends readonly Config<any>[]>(args: [...T]): Config<
    T[number] extends never ? [] : { [K in keyof T]: [T[K]] extends [Config<infer A>] ? A : never }
  >
  <T extends Readonly<{ [K: string]: Config<any> }>>(args: T): Config<{
    [K in keyof T]: [T[K]] extends [Config<infer A>] ? A : never
  }>
}
```
