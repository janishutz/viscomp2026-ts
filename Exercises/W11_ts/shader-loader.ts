export const fetchShader = async ( url: string ): Promise<string> => {
    return await ( await fetch( url ) ).text();
};
