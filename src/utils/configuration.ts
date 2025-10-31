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

export { ProjectItemStruct, NavigationItem, FormValues }