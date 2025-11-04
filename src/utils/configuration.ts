interface ProjectItemStruct {
    image: string
    title: string
    description: string
    buttonLabel: string
}

interface NavigationItem {
    label: string
    url: string
}

interface FormValues {
    name: string
    email: string
    message: string
}

interface Emits {
    (event: 'goto', value: string): void
}

export { ProjectItemStruct, NavigationItem, FormValues, Emits }